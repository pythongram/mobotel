.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;
.super Ljava/lang/Object;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field processChange:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 225
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;->processChange:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$600(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 261
    :cond_9
    :goto_9
    return-void

    .line 253
    :cond_a
    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;->processChange:Z

    if-eqz v2, :cond_9

    .line 254
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ImageSpan;

    .line 255
    .local v1, "spans":[Landroid/text/style/ImageSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    array-length v2, v1

    if-ge v0, v2, :cond_26

    .line 256
    aget-object v2, v1, v0

    invoke-interface {p1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 258
    :cond_26
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 259
    iput-boolean v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;->processChange:Z

    goto :goto_9
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 231
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$600(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 246
    :cond_9
    :goto_9
    return-void

    .line 239
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;)V

    .line 243
    :cond_1b
    if-eq p3, p4, :cond_9

    sub-int v0, p4, p3

    if-le v0, v1, :cond_9

    .line 244
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;->processChange:Z

    goto :goto_9
.end method
