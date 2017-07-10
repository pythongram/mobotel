.class Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;
.super Landroid/widget/ImageView;
.source "FavEmojisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/FavEmojisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiImageView"
.end annotation


# instance fields
.field private needDivider:Z

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .line 71
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->needDivider:Z

    if-eqz v0, :cond_2a

    .line 85
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 87
    :cond_2a
    return-void
.end method

.method public onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42440000    # 49.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->setMeasuredDimension(II)V

    .line 76
    return-void
.end method

.method public setNeedDivider(Z)V
    .registers 2
    .param p1, "divider"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->needDivider:Z

    .line 80
    return-void
.end method
