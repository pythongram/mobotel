.class public final Landroid/support/v7/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxColors:I

.field private mRegion:Landroid/graphics/Rect;

.field private mResizeArea:I

.field private mResizeMaxDimension:I

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    .line 604
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 605
    const/16 v0, 0x3100

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    .line 606
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 615
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 616
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_2c
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Palette;->DEFAULT_FILTER:Landroid/support/v7/graphics/Palette$Filter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 623
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    .line 604
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 605
    const/16 v0, 0x3100

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    .line 606
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 636
    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 637
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of Swatches is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_2c
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Palette;->DEFAULT_FILTER:Landroid/support/v7/graphics/Palette$Filter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 642
    return-void
.end method

.method private getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I
    .registers 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 879
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 880
    .local v3, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 881
    .local v7, "bitmapHeight":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 882
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 884
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_19

    .line 899
    .end local v1    # "pixels":[I
    :goto_18
    return-object v1

    .line 890
    .restart local v1    # "pixels":[I
    :cond_19
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 891
    .local v9, "regionWidth":I
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 894
    .local v8, "regionHeight":I
    mul-int v0, v9, v8

    new-array v11, v0, [I

    .line 895
    .local v11, "subsetPixels":[I
    const/4 v10, 0x0

    .local v10, "row":I
    :goto_2a
    if-ge v10, v8, :cond_3f

    .line 896
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v10

    mul-int/2addr v0, v3

    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    mul-int v2, v10, v9

    invoke-static {v1, v0, v11, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_3f
    move-object v1, v11

    .line 899
    goto :goto_18
.end method

.method private scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 907
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 909
    .local v2, "scaleRatio":D
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    if-lez v4, :cond_24

    .line 910
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int v0, v4, v5

    .line 911
    .local v0, "bitmapArea":I
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    if-le v0, v4, :cond_1d

    .line 912
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    int-to-double v4, v4

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 921
    .end local v0    # "bitmapArea":I
    :cond_1d
    :goto_1d
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_3f

    .line 926
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_23
    return-object p1

    .line 914
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_24
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-lez v4, :cond_1d

    .line 915
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 916
    .local v1, "maxDimension":I
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-le v1, v4, :cond_1d

    .line 917
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    int-to-double v4, v4

    int-to-double v6, v1

    div-double v2, v4, v6

    goto :goto_1d

    .line 927
    .end local v1    # "maxDimension":I
    :cond_3f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 928
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    const/4 v6, 0x0

    .line 926
    invoke-static {p1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_23
.end method


# virtual methods
.method public addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;
    .registers 3
    .param p1, "filter"    # Landroid/support/v7/graphics/Palette$Filter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 716
    if-eqz p1, :cond_7

    .line 717
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_7
    return-object p0
.end method

.method public addTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Builder;
    .registers 3
    .param p1, "target"    # Landroid/support/v7/graphics/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 763
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_d
    return-object p0
.end method

.method public clearFilters()Landroid/support/v7/graphics/Palette$Builder;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 705
    return-object p0
.end method

.method public clearRegion()Landroid/support/v7/graphics/Palette$Builder;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 752
    return-object p0
.end method

.method public clearTargets()Landroid/support/v7/graphics/Palette$Builder;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 774
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 775
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 777
    :cond_9
    return-object p0
.end method

.method public generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .registers 6
    .param p1, "listener"    # Landroid/support/v7/graphics/Palette$PaletteAsyncListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/graphics/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Landroid/support/v7/graphics/Palette;",
            ">;"
        }
    .end annotation

    .prologue
    .line 855
    if-nez p1, :cond_a

    .line 856
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_a
    new-instance v0, Landroid/support/v7/graphics/Palette$Builder$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/graphics/Palette$Builder$1;-><init>(Landroid/support/v7/graphics/Palette$Builder;Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/os/AsyncTaskCompat;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public generate()Landroid/support/v7/graphics/Palette;
    .registers 13
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 785
    const/4 v1, 0x0

    .line 791
    .local v1, "logger":Landroid/util/TimingLogger;
    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_b0

    .line 795
    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8}, Landroid/support/v7/graphics/Palette$Builder;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 797
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_12

    .line 798
    const-string v8, "Processed Bitmap"

    invoke-virtual {v1, v8}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 801
    :cond_12
    iget-object v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 802
    .local v4, "region":Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v8, :cond_64

    if-eqz v4, :cond_64

    .line 805
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    iget-object v10, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-double v10, v10

    div-double v6, v8, v10

    .line 806
    .local v6, "scale":D
    iget v8, v4, Landroid/graphics/Rect;->left:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 807
    iget v8, v4, Landroid/graphics/Rect;->top:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 808
    iget v8, v4, Landroid/graphics/Rect;->right:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 809
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 808
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 810
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 811
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 810
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 815
    .end local v6    # "scale":D
    :cond_64
    new-instance v3, Landroid/support/v7/graphics/ColorCutQuantizer;

    .line 816
    invoke-direct {p0, v0}, Landroid/support/v7/graphics/Palette$Builder;->getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v9

    iget v10, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 818
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9f

    const/4 v8, 0x0

    :goto_75
    invoke-direct {v3, v9, v10, v8}, Landroid/support/v7/graphics/ColorCutQuantizer;-><init>([II[Landroid/support/v7/graphics/Palette$Filter;)V

    .line 821
    .local v3, "quantizer":Landroid/support/v7/graphics/ColorCutQuantizer;
    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v8, :cond_7f

    .line 822
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 825
    :cond_7f
    invoke-virtual {v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v5

    .line 827
    .local v5, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    if-eqz v1, :cond_8a

    .line 828
    const-string v8, "Color quantization completed"

    invoke-virtual {v1, v8}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 836
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "quantizer":Landroid/support/v7/graphics/ColorCutQuantizer;
    .end local v4    # "region":Landroid/graphics/Rect;
    :cond_8a
    :goto_8a
    new-instance v2, Landroid/support/v7/graphics/Palette;

    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-direct {v2, v5, v8}, Landroid/support/v7/graphics/Palette;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 838
    .local v2, "p":Landroid/support/v7/graphics/Palette;
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette;->generate()V

    .line 840
    if-eqz v1, :cond_9e

    .line 841
    const-string v8, "Created Palette"

    invoke-virtual {v1, v8}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 845
    :cond_9e
    return-object v2

    .line 818
    .end local v2    # "p":Landroid/support/v7/graphics/Palette;
    .end local v5    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "region":Landroid/graphics/Rect;
    :cond_9f
    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    iget-object v11, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/support/v7/graphics/Palette$Filter;

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/support/v7/graphics/Palette$Filter;

    goto :goto_75

    .line 832
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "region":Landroid/graphics/Rect;
    :cond_b0
    iget-object v5, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .restart local v5    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    goto :goto_8a
.end method

.method public maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;
    .registers 2
    .param p1, "colors"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 654
    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 655
    return-object p0
.end method

.method public resizeBitmapArea(I)Landroid/support/v7/graphics/Palette$Builder;
    .registers 3
    .param p1, "area"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 693
    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    .line 694
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 695
    return-object p0
.end method

.method public resizeBitmapSize(I)Landroid/support/v7/graphics/Palette$Builder;
    .registers 3
    .param p1, "maxDimension"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 673
    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 674
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    .line 675
    return-object p0
.end method

.method public setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;
    .registers 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 733
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_31

    .line 734
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 736
    :cond_10
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 738
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_31

    .line 739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given region must intersect with the Bitmap\'s dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_31
    return-object p0
.end method
