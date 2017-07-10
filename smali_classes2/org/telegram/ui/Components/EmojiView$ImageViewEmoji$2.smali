.class Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->val$this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, "code":Ljava/lang/String;
    sget-object v5, Lorg/telegram/messenger/EmojiData;->emojiColoredMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1dc

    .line 182
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    # setter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touched:Z
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$402(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Z)Z

    .line 183
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    # getter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastX:F
    invoke-static {v9}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F

    move-result v9

    # setter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F
    invoke-static {v5, v9}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$502(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F

    .line 184
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    # getter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastY:F
    invoke-static {v9}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$800(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F

    move-result v9

    # setter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedY:F
    invoke-static {v5, v9}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$702(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F

    .line 186
    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$900()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "color":Ljava/lang/String;
    if-eqz v1, :cond_188

    .line 188
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_206

    :cond_43
    :goto_43
    packed-switch v5, :pswitch_data_214

    .line 208
    :goto_46
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 209
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v7, v7, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result v7

    mul-int/2addr v7, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result v5

    mul-int/lit8 v8, v5, 0x4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_195

    const/4 v5, 0x5

    :goto_7b
    sub-int v5, v8, v5

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int v2, v7, v5

    .line 210
    .local v2, "x":I
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v4

    sub-int/2addr v5, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    if-ge v5, v7, :cond_198

    .line 211
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v4

    sub-int/2addr v5, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 215
    :cond_a6
    :goto_a6
    neg-int v3, v2

    .line 216
    .local v3, "xOffset":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-gez v5, :cond_b1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 218
    .local v4, "yOffset":I
    :cond_b1
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1d8

    const/high16 v5, 0x41f00000    # 30.0f

    :goto_c1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v5, v3

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v5, v8

    invoke-virtual {v7, v0, v5}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setEmoji(Ljava/lang/String;I)V

    .line 220
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setFocusable(Z)V

    .line 221
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    neg-int v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->popupHeight:I
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v9, v9, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v9}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v7, v4

    invoke-virtual {v5, p1, v3, v7}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 233
    .end local v1    # "color":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v3    # "xOffset":I
    .end local v4    # "yOffset":I
    :goto_10d
    return v6

    .line 188
    .restart local v1    # "color":Ljava/lang/String;
    :pswitch_10e
    const-string v9, "\ud83c\udffb"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    move v5, v4

    goto/16 :goto_43

    :pswitch_119
    const-string v9, "\ud83c\udffc"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    move v5, v6

    goto/16 :goto_43

    :pswitch_124
    const-string v9, "\ud83c\udffd"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    move v5, v7

    goto/16 :goto_43

    :pswitch_12f
    const-string v9, "\ud83c\udffe"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    move v5, v8

    goto/16 :goto_43

    :pswitch_13a
    const-string v9, "\ud83c\udfff"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    const/4 v5, 0x4

    goto/16 :goto_43

    .line 190
    :pswitch_145
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_46

    .line 193
    :pswitch_152
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_46

    .line 196
    :pswitch_15f
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_46

    .line 199
    :pswitch_16c
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_46

    .line 202
    :pswitch_17a
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_46

    .line 206
    :cond_188
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_46

    :cond_195
    move v5, v6

    .line 209
    goto/16 :goto_7b

    .line 212
    .restart local v2    # "x":I
    :cond_198
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v4

    sub-int/2addr v5, v2

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v7, v7, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->popupWidth:I
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v7

    add-int/2addr v5, v7

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_a6

    .line 213
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v4

    sub-int/2addr v5, v2

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v7, v7, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->popupWidth:I
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v7

    add-int/2addr v5, v7

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v5, v7

    add-int/2addr v2, v5

    goto/16 :goto_a6

    .line 218
    .restart local v3    # "xOffset":I
    .restart local v4    # "yOffset":I
    :cond_1d8
    const/high16 v5, 0x41b00000    # 22.0f

    goto/16 :goto_c1

    .line 227
    .end local v1    # "color":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v3    # "xOffset":I
    .end local v4    # "yOffset":I
    :cond_1dc
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v5

    if-nez v5, :cond_1e9

    move v6, v4

    .line 228
    goto/16 :goto_10d

    .line 230
    :cond_1e9
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    # setter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touched:Z
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$402(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Z)Z

    .line 231
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    # getter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastX:F
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F

    move-result v7

    # setter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F
    invoke-static {v5, v7}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$502(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F

    .line 232
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    # getter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastY:F
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$800(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F

    move-result v7

    # setter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedY:F
    invoke-static {v5, v7}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$702(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F

    goto/16 :goto_10d

    .line 188
    :pswitch_data_206
    .packed-switch 0x1b0f3f
        :pswitch_10e
        :pswitch_119
        :pswitch_124
        :pswitch_12f
        :pswitch_13a
    .end packed-switch

    :pswitch_data_214
    .packed-switch 0x0
        :pswitch_145
        :pswitch_152
        :pswitch_15f
        :pswitch_16c
        :pswitch_17a
    .end packed-switch
.end method
