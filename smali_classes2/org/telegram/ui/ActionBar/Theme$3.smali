.class final Lorg/telegram/ui/ActionBar/Theme$3;
.super Landroid/graphics/drawable/StateListDrawable;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1559
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public selectDrawable(I)Z
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 1562
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_34

    .line 1563
    # invokes: Lorg/telegram/ui/ActionBar/Theme;->getStateDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme;->access$000(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1564
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 1565
    .local v0, "colorFilter":Landroid/graphics/ColorFilter;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_24

    move-object v3, v1

    .line 1566
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 1570
    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v2

    .line 1571
    .local v2, "result":Z
    if-eqz v0, :cond_23

    .line 1572
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1576
    .end local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "result":Z
    :cond_23
    :goto_23
    return v2

    .line 1567
    .restart local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_24
    instance-of v3, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_1a

    move-object v3, v1

    .line 1568
    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    goto :goto_1a

    .line 1576
    .end local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_34
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v2

    goto :goto_23
.end method
