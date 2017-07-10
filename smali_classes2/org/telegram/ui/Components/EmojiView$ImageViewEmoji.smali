.class Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
.super Landroid/widget/ImageView;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageViewEmoji"
.end annotation


# instance fields
.field private lastX:F

.field private lastY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private touched:Z

.field private touchedX:F

.field private touchedY:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 170
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;-><init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;-><init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 237
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 239
    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->sendEmoji(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .param p1, "x1"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touched:Z

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .param p1, "x1"    # F

    .prologue
    .line 161
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .prologue
    .line 161
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastX:F

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .param p1, "x1"    # F

    .prologue
    .line 161
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedY:F

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .prologue
    .line 161
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastY:F

    return v0
.end method

.method private sendEmoji(Ljava/lang/String;)V
    .registers 11
    .param p1, "override"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x32

    .line 242
    if-eqz p1, :cond_ed

    move-object v1, p1

    .line 243
    .local v1, "code":Ljava/lang/String;
    :goto_5
    if-nez p1, :cond_fe

    .line 244
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    if-eqz v7, :cond_23

    .line 245
    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$900()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    .local v2, "color":Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 247
    # invokes: Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$1800(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .end local v2    # "color":Ljava/lang/String;
    :cond_23
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 251
    .local v3, "count":Ljava/lang/Integer;
    if-nez v3, :cond_36

    .line 252
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 254
    :cond_36
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_80

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-le v7, v8, :cond_80

    .line 255
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$2000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "a":I
    :goto_54
    if-ltz v0, :cond_80

    .line 256
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$2000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 257
    .local v5, "emoji":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$2000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gt v7, v8, :cond_f6

    .line 264
    .end local v0    # "a":I
    .end local v5    # "emoji":Ljava/lang/String;
    :cond_80
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    if-eqz v7, :cond_a4

    .line 266
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$2100(Lorg/telegram/ui/Components/EmojiView;)V

    .line 268
    :cond_a4
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$2200(Lorg/telegram/ui/Components/EmojiView;)V

    .line 269
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    .line 270
    .local v4, "currentItem":I
    const/4 v6, 0x0

    .line 271
    .local v6, "i":I
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 272
    const/4 v6, 0x1

    .line 276
    :goto_bd
    if-eq v4, v6, :cond_d7

    .line 277
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v7

    if-eqz v7, :cond_fc

    .line 278
    const/4 v6, 0x1

    .line 282
    :goto_c8
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 284
    :cond_d7
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v7

    if-eqz v7, :cond_ec

    .line 285
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v7

    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/telegram/ui/Components/EmojiView$Listener;->onEmojiSelected(Ljava/lang/String;)V

    .line 292
    .end local v3    # "count":Ljava/lang/Integer;
    .end local v4    # "currentItem":I
    .end local v6    # "i":I
    :cond_ec
    :goto_ec
    return-void

    .line 242
    .end local v1    # "code":Ljava/lang/String;
    :cond_ed
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v1, v7

    goto/16 :goto_5

    .line 255
    .restart local v0    # "a":I
    .restart local v1    # "code":Ljava/lang/String;
    .restart local v3    # "count":Ljava/lang/Integer;
    .restart local v5    # "emoji":Ljava/lang/String;
    :cond_f6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_54

    .line 274
    .end local v0    # "a":I
    .end local v5    # "emoji":Ljava/lang/String;
    .restart local v4    # "currentItem":I
    .restart local v6    # "i":I
    :cond_fa
    const/4 v6, 0x0

    goto :goto_bd

    .line 280
    :cond_fc
    const/4 v6, 0x0

    goto :goto_c8

    .line 288
    .end local v3    # "count":Ljava/lang/Integer;
    .end local v4    # "currentItem":I
    .end local v6    # "i":I
    :cond_fe
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v7

    if-eqz v7, :cond_ec

    .line 289
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v7

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/telegram/ui/Components/EmojiView$Listener;->onEmojiSelected(Ljava/lang/String;)V

    goto :goto_ec
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 296
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setMeasuredDimension(II)V

    .line 297
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    const v9, 0x3e4ccccd

    const/4 v12, 0x1

    const/4 v11, 0x0

    const v10, -0x39e3c000    # -10000.0f

    .line 301
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touched:Z

    if-eqz v7, :cond_79

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v12, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_133

    .line 303
    :cond_1a
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_bb

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 304
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->dismiss()V

    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "color":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result v7

    packed-switch v7, :pswitch_data_1cc

    .line 324
    :goto_45
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 325
    .local v1, "code":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    if-eqz v7, :cond_a1

    .line 326
    if-eqz v2, :cond_99

    .line 327
    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$900()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    # invokes: Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$1800(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    :goto_64
    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    invoke-direct {p0, v13}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->sendEmoji(Ljava/lang/String;)V

    .line 334
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->saveEmojiColors()V
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)V

    .line 357
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "color":Ljava/lang/String;
    :cond_73
    :goto_73
    iput-boolean v11, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touched:Z

    .line 358
    iput v10, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F

    .line 359
    iput v10, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedY:F

    .line 385
    :cond_79
    :goto_79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastX:F

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastY:F

    .line 387
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 309
    .restart local v2    # "color":Ljava/lang/String;
    :pswitch_8a
    const-string v2, "\ud83c\udffb"

    .line 310
    goto :goto_45

    .line 312
    :pswitch_8d
    const-string v2, "\ud83c\udffc"

    .line 313
    goto :goto_45

    .line 315
    :pswitch_90
    const-string v2, "\ud83c\udffd"

    .line 316
    goto :goto_45

    .line 318
    :pswitch_93
    const-string v2, "\ud83c\udffe"

    .line 319
    goto :goto_45

    .line 321
    :pswitch_96
    const-string v2, "\ud83c\udfff"

    goto :goto_45

    .line 330
    .restart local v1    # "code":Ljava/lang/String;
    :cond_99
    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$900()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 336
    :cond_a1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_b8

    .end local v2    # "color":Ljava/lang/String;
    :goto_ac
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->sendEmoji(Ljava/lang/String;)V

    goto :goto_73

    .restart local v2    # "color":Ljava/lang/String;
    :cond_b8
    const-string v2, ""

    goto :goto_ac

    .line 339
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "color":Ljava/lang/String;
    :cond_bb
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 340
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 341
    .local v3, "emoji":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/EmojiView;->haveFavEmoji(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_118

    .line 342
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v7, "AppName"

    const v8, 0x7f070092

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 344
    const-string v7, "FavEmojiRemove"

    const v8, 0x7f0706e9

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 345
    const-string v7, "OK"

    const v8, 0x7f0703d4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$3;

    invoke-direct {v8, p0, v3}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$3;-><init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 350
    const-string v7, "Cancel"

    const v8, 0x7f0700fe

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 351
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_73

    .line 353
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_118
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/EmojiView;->toggleFavEmoji(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "FavEmojiAdded"

    const v9, 0x7f0706e8

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_73

    .line 360
    .end local v3    # "emoji":Ljava/lang/String;
    :cond_133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_79

    .line 361
    const/4 v4, 0x0

    .line 362
    .local v4, "ignore":Z
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_16b

    .line 363
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v9, v12}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_167

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v9, v11}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1c4

    .line 364
    :cond_167
    iput v10, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F

    .line 365
    iput v10, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedY:F

    .line 370
    :cond_16b
    :goto_16b
    if-nez v4, :cond_79

    .line 371
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getLocationOnScreen([I)V

    .line 372
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v7

    aget v7, v7, v11

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    add-float v6, v7, v8

    .line 373
    .local v6, "x":F
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getLocationOnScreen([I)V

    .line 374
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v7

    aget v7, v7, v11

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 375
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v7

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v7, v6, v7

    float-to-int v5, v7

    .line 376
    .local v5, "position":I
    if-gez v5, :cond_1c6

    .line 377
    const/4 v5, 0x0

    .line 381
    :cond_1b9
    :goto_1b9
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_79

    .line 367
    .end local v5    # "position":I
    .end local v6    # "x":F
    :cond_1c4
    const/4 v4, 0x1

    goto :goto_16b

    .line 378
    .restart local v5    # "position":I
    .restart local v6    # "x":F
    :cond_1c6
    const/4 v7, 0x5

    if-le v5, v7, :cond_1b9

    .line 379
    const/4 v5, 0x5

    goto :goto_1b9

    .line 307
    nop

    :pswitch_data_1cc
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_8d
        :pswitch_90
        :pswitch_93
        :pswitch_96
    .end packed-switch
.end method
