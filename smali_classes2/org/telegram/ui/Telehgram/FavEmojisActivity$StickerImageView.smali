.class Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "FavEmojisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/FavEmojisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerImageView"
.end annotation


# instance fields
.field private needDivider:Z

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .line 206
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 207
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 218
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 219
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->needDivider:Z

    if-eqz v0, :cond_2a

    .line 220
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 222
    :cond_2a
    return-void
.end method

.method public onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 210
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42820000    # 65.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->setMeasuredDimension(II)V

    .line 211
    return-void
.end method

.method public setNeedDivider(Z)V
    .registers 2
    .param p1, "divider"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->needDivider:Z

    .line 215
    return-void
.end method
