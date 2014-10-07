#pragma once

extern "C"

declare function cpPolyShapeAlloc() as cpPolyShape_ ptr
declare function cpPolyShapeInit(byval poly as cpPolyShape_ ptr, byval body as cpBody_ ptr, byval count as long, byval verts as const cpVect ptr, byval transform as cpTransform, byval radius as cpFloat) as cpPolyShape_ ptr
declare function cpPolyShapeInitRaw(byval poly as cpPolyShape_ ptr, byval body as cpBody_ ptr, byval count as long, byval verts as const cpVect ptr, byval radius as cpFloat) as cpPolyShape_ ptr
declare function cpPolyShapeNew(byval body as cpBody_ ptr, byval count as long, byval verts as const cpVect ptr, byval transform as cpTransform, byval radius as cpFloat) as cpShape_ ptr
declare function cpPolyShapeNewRaw(byval body as cpBody_ ptr, byval count as long, byval verts as const cpVect ptr, byval radius as cpFloat) as cpShape_ ptr
declare function cpBoxShapeInit(byval poly as cpPolyShape_ ptr, byval body as cpBody_ ptr, byval width_ as cpFloat, byval height as cpFloat, byval radius as cpFloat) as cpPolyShape_ ptr
declare function cpBoxShapeInit2(byval poly as cpPolyShape_ ptr, byval body as cpBody_ ptr, byval box as cpBB, byval radius as cpFloat) as cpPolyShape_ ptr
declare function cpBoxShapeNew(byval body as cpBody_ ptr, byval width_ as cpFloat, byval height as cpFloat, byval radius as cpFloat) as cpShape_ ptr
declare function cpBoxShapeNew2(byval body as cpBody_ ptr, byval box as cpBB, byval radius as cpFloat) as cpShape_ ptr
declare function cpPolyShapeGetCount(byval shape as const cpShape_ ptr) as long
declare function cpPolyShapeGetVert(byval shape as const cpShape_ ptr, byval index as long) as cpVect
declare function cpPolyShapeGetRadius(byval shape as const cpShape_ ptr) as cpFloat

end extern
