.class Lorg/telegram/messenger/support/util/TileList;
.super Ljava/lang/Object;
.source "TileList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/util/TileList$Tile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mLastAccessedTile:Lorg/telegram/messenger/support/util/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field private final mTiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "tileSize"    # I

    .prologue
    .line 35
    .local p0, "this":Lorg/telegram/messenger/support/util/TileList;, "Lorg/telegram/messenger/support/util/TileList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    .line 36
    iput p1, p0, Lorg/telegram/messenger/support/util/TileList;->mTileSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public addOrReplace(Lorg/telegram/messenger/support/util/TileList$Tile;)Lorg/telegram/messenger/support/util/TileList$Tile;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;)",
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/telegram/messenger/support/util/TileList;, "Lorg/telegram/messenger/support/util/TileList<TT;>;"
    .local p1, "newTile":Lorg/telegram/messenger/support/util/TileList$Tile;, "Lorg/telegram/messenger/support/util/TileList$Tile<TT;>;"
    iget-object v2, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    iget v3, p1, Lorg/telegram/messenger/support/util/TileList$Tile;->mStartPosition:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 65
    .local v0, "index":I
    if-gez v0, :cond_13

    .line 66
    iget-object v2, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    iget v3, p1, Lorg/telegram/messenger/support/util/TileList$Tile;->mStartPosition:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    const/4 v1, 0x0

    .line 74
    :cond_12
    :goto_12
    return-object v1

    .line 69
    :cond_13
    iget-object v2, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/util/TileList$Tile;

    .line 70
    .local v1, "oldTile":Lorg/telegram/messenger/support/util/TileList$Tile;, "Lorg/telegram/messenger/support/util/TileList$Tile<TT;>;"
    iget-object v2, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lorg/telegram/messenger/support/util/TileList;->mLastAccessedTile:Lorg/telegram/messenger/support/util/TileList$Tile;

    if-ne v2, v1, :cond_12

    .line 72
    iput-object p1, p0, Lorg/telegram/messenger/support/util/TileList;->mLastAccessedTile:Lorg/telegram/messenger/support/util/TileList$Tile;

    goto :goto_12
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 56
    .local p0, "this":Lorg/telegram/messenger/support/util/TileList;, "Lorg/telegram/messenger/support/util/TileList<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 57
    return-void
.end method

.method public getAtIndex(I)Lorg/telegram/messenger/support/util/TileList$Tile;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/telegram/messenger/support/util/TileList;, "Lorg/telegram/messenger/support/util/TileList<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/util/TileList$Tile;

    return-object v0
.end method

.method public getItemAt(I)Ljava/lang/Object;
    .registers 5
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/telegram/messenger/support/util/TileList;, "Lorg/telegram/messenger/support/util/TileList<TT;>;"
    iget-object v2, p0, Lorg/telegram/messenger/support/util/TileList;->mLastAccessedTile:Lorg/telegram/messenger/support/util/TileList$Tile;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/telegram/messenger/support/util/TileList;->mLastAccessedTile:Lorg/telegram/messenger/support/util/TileList$Tile;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/util/TileList$Tile;->containsPosition(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 41
    :cond_c
    iget v2, p0, Lorg/telegram/messenger/support/util/TileList;->mTileSize:I

    rem-int v2, p1, v2

    sub-int v1, p1, v2

    .line 42
    .local v1, "startPosition":I
    iget-object v2, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 43
    .local v0, "index":I
    if-gez v0, :cond_1c

    .line 44
    const/4 v2, 0x0

    .line 48
    .end local v0    # "index":I
    .end local v1    # "startPosition":I
    :goto_1b
    return-object v2

    .line 46
    .restart local v0    # "index":I
    .restart local v1    # "startPosition":I
    :cond_1c
    iget-object v2, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/util/TileList$Tile;

    iput-object v2, p0, Lorg/telegram/messenger/support/util/TileList;->mLastAccessedTile:Lorg/telegram/messenger/support/util/TileList$Tile;

    .line 48
    .end local v0    # "index":I
    .end local v1    # "startPosition":I
    :cond_26
    iget-object v2, p0, Lorg/telegram/messenger/support/util/TileList;->mLastAccessedTile:Lorg/telegram/messenger/support/util/TileList$Tile;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/util/TileList$Tile;->getByPosition(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1b
.end method

.method public removeAtPos(I)Lorg/telegram/messenger/support/util/TileList$Tile;
    .registers 4
    .param p1, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/telegram/messenger/support/util/TileList;, "Lorg/telegram/messenger/support/util/TileList<TT;>;"
    iget-object v1, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/util/TileList$Tile;

    .line 79
    .local v0, "tile":Lorg/telegram/messenger/support/util/TileList$Tile;, "Lorg/telegram/messenger/support/util/TileList$Tile<TT;>;"
    iget-object v1, p0, Lorg/telegram/messenger/support/util/TileList;->mLastAccessedTile:Lorg/telegram/messenger/support/util/TileList$Tile;

    if-ne v1, v0, :cond_f

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/support/util/TileList;->mLastAccessedTile:Lorg/telegram/messenger/support/util/TileList$Tile;

    .line 82
    :cond_f
    iget-object v1, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 83
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lorg/telegram/messenger/support/util/TileList;, "Lorg/telegram/messenger/support/util/TileList<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method