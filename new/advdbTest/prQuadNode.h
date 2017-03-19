//
// Created by ravichandran on 18/03/17.
//

#ifndef ADVDBTEST_PRQUADNODE_H
#define ADVDBTEST_PRQUADNODE_H

#include "QuadTreeLib.h"
#include "QuadNode.h"

class prQuadNode : public QuadNode
{
protected:
    int leafCapacity;
    int maxHeight;


public:

    int height;
    vector<QPoint> points;
    prQuadNode *prqnNW;
    prQuadNode *prqnNE;
    prQuadNode *prqnSW;
    prQuadNode *prqnSE;


    prQuadNode() {}
    prQuadNode(QBoundingBox QBB)
    {
        height = 0;
        leafCapacity = 4;
        maxHeight = 20;
        (*this).qbb = QBB;
        (*this).prqnNW = NULL;
        (*this).prqnNE = NULL;
        (*this).prqnSW = NULL;
        (*this).prqnSE = NULL;

    }
    prQuadNode(int originX, int originY, float width, float height)
    {
        height = 0;
        leafCapacity = 4;
        maxHeight = 20;
        QBoundingBox *QBB = new QBoundingBox(originX, originY, width, height);
        (*this).qbb = *QBB;
        (*this).prqnNW = NULL;
        (*this).prqnNE = NULL;
        (*this).prqnSW = NULL;
        (*this).prqnSE = NULL;

    }

    bool isLeaf() {
        return (prqnNW == NULL && prqnNE == NULL && prqnSW == NULL && prqnSE == NULL);
    }


    bool insert(QPoint *point)
    {

        if ( !qbb.containsPoint(point) || ( isLeaf() && point->isIn(points) ) )
            return false;

        if (( isLeaf() && points.size() < leafCapacity )  || ( height == maxHeight ) )
        {
            points.push_back(*point);
            return true;
        }

        if (isLeaf() && height<maxHeight)
        {
            subdivide();
        }

        return insertIntoChildren(point);
}


    bool insertIntoChildren(QPoint *point) {

        if (prqnNW->insert(point)) return true;
        if (prqnNE->insert(point)) return true;
        if (prqnSW->insert(point)) return true;
        if (prqnSE->insert(point)) return true;

    return false;
}


    void subdivide()
    {
        float h = qbb.getHeight()/2;
        float w = qbb.getWidth()/2;

        float current_x = qbb.getX() + w;
        float current_y = qbb.getY() + h;

        QPoint *pNW = new QPoint(current_x-w,current_y);
        QBoundingBox *qbbNW = new QBoundingBox( pNW, w, h);
        this->prqnNW = new prQuadNode(*qbbNW);
        this->prqnNW->height = this->height + 1;

        QPoint *pNE = new QPoint(current_x,current_y);
        QBoundingBox *qbbNE = new QBoundingBox( pNE, w, h);
        this->prqnNE = new prQuadNode(*qbbNE);
        this->prqnNE->height = this->height + 1;

        QPoint *pSW = new QPoint(current_x-w,current_y-h);
        QBoundingBox *qbbSW =new QBoundingBox( pSW, w, h);
        this->prqnSW = new prQuadNode(*qbbSW);
        this->prqnSW->height = this->height + 1;

        QPoint *pSE = new QPoint(current_x,current_y-h);
        QBoundingBox *qbbSE =new QBoundingBox( pSE, w, h);
        this->prqnSE = new prQuadNode(*qbbSE);
        this->prqnSE->height = this->height + 1;


        for (int i=0; i<points.size(); i++)
            insertIntoChildren(&points[i]);
        points.clear();
    }

     void queryRange(QBoundingBox range, vector<QPoint> &pointsInRange) {
        // Automatically abort if the range does not collide with this quad
        if (!(*this).qbb.intersectsBox(range))
            return;

        // If leaf, check objects at this level
        if (isLeaf()) {
            for (int i=0; i<points.size(); i++)
            {
                if (range.containsPoint(&points[i]))
                    pointsInRange.push_back(points[i]);
            }
            return;
        }

        // Otherwise, add the points from the children
         this->prqnNW->queryRange(range,pointsInRange);
         this->prqnNE->queryRange(range,pointsInRange);
         this->prqnSW->queryRange(range,pointsInRange);
         this->prqnSE->queryRange(range,pointsInRange);
    }

    void pointsPrint()
    {
        cout<<endl;
        for (int i=0; i<points.size(); i++)
            points[i].print("\t\t");
        cout<<endl;
    }



    void print(string prefix = "", bool emptyLine = false)
    {
        if(emptyLine) cout<<endl;
//        cout<<prefix<< "prQuadNode | leafCapacity : "<<this->leafCapacity<<" | maxHeight : "<<this->maxHeight<<endl;
        cout<<prefix<< "prQuadNode | height : "<<this->height<<endl;
        cout<<prefix<< "prQuadNode | ";
        this->qbb.print("\t\t",true);
        cout<<prefix<< "prQuadNode | points -> "<<this->points.size();
        pointsPrint();

    }

};



#endif //ADVDBTEST_PRQUADNODE_H
