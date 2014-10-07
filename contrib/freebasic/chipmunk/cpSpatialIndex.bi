#pragma once

extern "C"

type cpSweep1D as cpSweep1D_
type cpBBTree as cpBBTree_
type cpSpatialIndexClass as cpSpatialIndexClass_
type cpSpaceHash as cpSpaceHash_
type cpSpatialIndexBBFunc as function(byval obj as any ptr) as cpBB
type cpSpatialIndexIteratorFunc as sub(byval obj as any ptr, byval data_ as any ptr)
type cpSpatialIndexQueryFunc as function(byval obj1 as any ptr, byval obj2 as any ptr, byval id as cpCollisionID, byval data_ as any ptr) as cpCollisionID
type cpSpatialIndexSegmentQueryFunc as function(byval obj1 as any ptr, byval obj2 as any ptr, byval data_ as any ptr) as cpFloat

type cpSpatialIndex
	klass as cpSpatialIndexClass ptr
	bbfunc as cpSpatialIndexBBFunc
	staticIndex as cpSpatialIndex ptr
	dynamicIndex as cpSpatialIndex ptr
end type

declare function cpSpaceHashAlloc() as cpSpaceHash ptr
declare function cpSpaceHashInit(byval hash as cpSpaceHash ptr, byval celldim as cpFloat, byval numcells as long, byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr
declare function cpSpaceHashNew(byval celldim as cpFloat, byval cells as long, byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr
declare sub cpSpaceHashResize(byval hash as cpSpaceHash ptr, byval celldim as cpFloat, byval numcells as long)
declare function cpBBTreeAlloc() as cpBBTree ptr
declare function cpBBTreeInit(byval tree as cpBBTree ptr, byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr
declare function cpBBTreeNew(byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr
declare sub cpBBTreeOptimize(byval index as cpSpatialIndex ptr)

type cpBBTreeVelocityFunc as function(byval obj as any ptr) as cpVect

declare sub cpBBTreeSetVelocityFunc(byval index as cpSpatialIndex ptr, byval func as cpBBTreeVelocityFunc)
declare function cpSweep1DAlloc() as cpSweep1D ptr
declare function cpSweep1DInit(byval sweep as cpSweep1D ptr, byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr
declare function cpSweep1DNew(byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr

type cpSpatialIndexDestroyImpl as sub(byval index as cpSpatialIndex ptr)
type cpSpatialIndexCountImpl as function(byval index as cpSpatialIndex ptr) as long
type cpSpatialIndexEachImpl as sub(byval index as cpSpatialIndex ptr, byval func as cpSpatialIndexIteratorFunc, byval data_ as any ptr)
type cpSpatialIndexContainsImpl as function(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval hashid as cpHashValue) as cpBool
type cpSpatialIndexInsertImpl as sub(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval hashid as cpHashValue)
type cpSpatialIndexRemoveImpl as sub(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval hashid as cpHashValue)
type cpSpatialIndexReindexImpl as sub(byval index as cpSpatialIndex ptr)
type cpSpatialIndexReindexObjectImpl as sub(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval hashid as cpHashValue)
type cpSpatialIndexReindexQueryImpl as sub(byval index as cpSpatialIndex ptr, byval func as cpSpatialIndexQueryFunc, byval data_ as any ptr)
type cpSpatialIndexQueryImpl as sub(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval bb as cpBB, byval func as cpSpatialIndexQueryFunc, byval data_ as any ptr)
type cpSpatialIndexSegmentQueryImpl as sub(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval a as cpVect, byval b as cpVect, byval t_exit as cpFloat, byval func as cpSpatialIndexSegmentQueryFunc, byval data_ as any ptr)

type cpSpatialIndexClass_
	destroy as cpSpatialIndexDestroyImpl
	count as cpSpatialIndexCountImpl
	each as cpSpatialIndexEachImpl
	contains as cpSpatialIndexContainsImpl
	insert as cpSpatialIndexInsertImpl
	remove as cpSpatialIndexRemoveImpl
	reindex as cpSpatialIndexReindexImpl
	reindexObject as cpSpatialIndexReindexObjectImpl
	reindexQuery as cpSpatialIndexReindexQueryImpl
	query as cpSpatialIndexQueryImpl
	segmentQuery as cpSpatialIndexSegmentQueryImpl
end type

declare sub cpSpatialIndexFree(byval index as cpSpatialIndex ptr)
declare sub cpSpatialIndexCollideStatic(byval dynamicIndex as cpSpatialIndex ptr, byval staticIndex as cpSpatialIndex ptr, byval func as cpSpatialIndexQueryFunc, byval data_ as any ptr)

''/ Destroy a spatial index.
#ifndef cpSpactialIndexDestroy
#define cpSpactialIndexDestroy( index )	if (index->klass) index->klass->destroy(index)
#endif


''/ Get the number of objects in the spatial index.
#ifndef cpSpatialIndexCount
#define cpSpatialIndexCount( index )	(index)->klass->count( index )
#endif


''/ Iterate the objects in the spatial index. @c func will be called once for each object.
#ifndef cpSpatialIndexEach
#define cpSpatialIndexEach( index, func, _data )	(index)->klass->each( index, func, _data )
#endif

''/ Returns true if the spatial index contains the given object.
''/ Most spatial indexes use hashed storage, so you must provide a hash value too.
#ifndef cpSpatialIndexContains
#define cpSpatialIndexContains( index, obj, hashid )	(index)->klass->contains( index, obj, hashid )
#endif


''/ Add an object to a spatial index.
''/ Most spatial indexes use hashed storage, so you must provide a hash value too.
#ifndef cpSpatialIndexInsert
#define cpSpatialIndexInsert( index, obj, hashid )	(index)->klass->insert( index, obj, hashid )
#endif


''/ Remove an object from a spatial index.
''/ Most spatial indexes use hashed storage, so you must provide a hash value too.
#ifndef cpSpatialIndexRemove
#define cpSpatialIndexRemove( index, obj, hashid )	(index)->klass->remove( index, obj, hashid )
#endif


''/ Perform a full reindex of a spatial index.
#ifndef cpSpatialIndexReindex
#define cpSpatialIndexReindex( index )	index->klass->reindex( index )
#endif


''/ Reindex a single object in the spatial index.
#ifndef cpSpatialIndeReindexObject
#define cpSpatialIndexReindexObject( index, obj, hashid )	(index)->klass->reindexObject( index, obj, hashid )
#endif


''/ Perform a rectangle query against the spatial index, calling @c func for each potential match.
#ifndef cpSpatialIndexQuery
#define cpSpatialIndexQuery( index, obj, bb, func, _data )	(index)->klass->query( index, obj, bb, func, _data )
#endif


''/ Perform a segment query against the spatial index, calling @c func for each potential match.
#ifndef cpSpatialIndexSegmentQuery
#define cpSpatialIndexSegmentQuery( index, obj, a, b, t_exit, func, _data )	(index)->klass->segmentQuery( index, obj, a, b, t_exit, func, _data )
#endif


''/ Simultaneously reindex and find all colliding objects.

''/ @c func will be called once for each potentially overlapping pair of objects found.

''/ If the spatial index was initialized with a static index, it will collide it's objects against that as well.
#ifndef cpSpatialIndexReindexQuery
#define cpSpatialIndexReindexQuery( index, func, _data )	(index)->klass->reindexQuery( index, func, _data )
#endif

end extern
