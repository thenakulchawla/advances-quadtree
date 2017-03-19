//
// Created by ravichandran on 18/03/17.
//

#ifndef ADVDBTEST_PRQUADTREE_H
#define ADVDBTEST_PRQUADTREE_H

#include "QuadTreeLib.h"
#include "prQuadNode.h"
#include "QuadTree.h"

class prQuadTree : public QuadTree
{

private:
    QPoint XY_POINT;
    QBoundingBox RANGE;

    prQuadNode *root;

public:

    prQuadTree(){}
    prQuadTree(float x, float y, float width, float height) {
        QPoint *xyPoint = new QPoint(x,y);
        QBoundingBox *QBB = new QBoundingBox(xyPoint,width,height);
        root = new prQuadNode( *QBB );
    }

    prQuadTree(float width, float height) {
        QPoint *xyPoint = new QPoint(0,0);
        QBoundingBox *QBB = new QBoundingBox(xyPoint,width,height);
        root = new prQuadNode( *QBB );
    }



};



#endif //ADVDBTEST_PRQUADTREE_H
