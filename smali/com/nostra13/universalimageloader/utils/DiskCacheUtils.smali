.class public final Lcom/nostra13/universalimageloader/utils/DiskCacheUtils;
.super Ljava/lang/Object;
.source "DiskCacheUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static findInCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Ljava/io/File;
    .registers 4
    .param p0, "imageUri"    # Ljava/lang/String;
    .param p1, "diskCache"    # Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .prologue
    .line 36
    invoke-interface {p1, p0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, "image":Ljava/io/File;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .end local v0    # "image":Ljava/io/File;
    :goto_c
    return-object v0

    .restart local v0    # "image":Ljava/io/File;
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Z
    .registers 4
    .param p0, "imageUri"    # Ljava/lang/String;
    .param p1, "diskCache"    # Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .prologue
    .line 46
    invoke-interface {p1, p0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 47
    .local v0, "image":Ljava/io/File;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method
