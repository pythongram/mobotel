.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;
.super Ljava/lang/Object;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/EmojiView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 434
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackspace()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 436
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 440
    :goto_d
    return v0

    .line 439
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 440
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public onClearEmojiRecent()V
    .registers 1

    .prologue
    .line 491
    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .registers 10
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 444
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0xc8

    if-le v4, v5, :cond_15

    .line 462
    :goto_14
    return-void

    .line 447
    :cond_15
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 448
    .local v1, "i":I
    if-gez v1, :cond_22

    .line 449
    const/4 v1, 0x0

    .line 452
    :cond_22
    :try_start_22
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v5, 0x1

    # setter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$602(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z

    .line 453
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 454
    .local v3, "localCharSequence":Ljava/lang/CharSequence;
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v2, v1, v4

    .line 456
    .local v2, "j":I
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_67} :catch_6d
    .catchall {:try_start_22 .. :try_end_67} :catchall_77

    .line 460
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # setter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z
    invoke-static {v4, v7}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$602(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z

    goto :goto_14

    .line 457
    .end local v2    # "j":I
    .end local v3    # "localCharSequence":Ljava/lang/CharSequence;
    :catch_6d
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_77

    .line 460
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # setter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z
    invoke-static {v4, v7}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$602(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z

    goto :goto_14

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_77
    move-exception v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # setter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z
    invoke-static {v5, v7}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$602(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z

    throw v4
.end method

.method public onGifSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 2
    .param p1, "gif"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 476
    return-void
.end method

.method public onGifTab(Z)V
    .registers 2
    .param p1, "opened"    # Z

    .prologue
    .line 481
    return-void
.end method

.method public onReorderFavorites(Z)V
    .registers 2
    .param p1, "z"    # Z

    .prologue
    .line 516
    return-void
.end method

.method public onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .registers 3
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSet;
    .param p2, "inputStickerSet"    # Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .prologue
    .line 501
    return-void
.end method

.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 2
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 466
    return-void
.end method

.method public onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .registers 2
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .prologue
    .line 506
    return-void
.end method

.method public onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .registers 2
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .prologue
    .line 511
    return-void
.end method

.method public onStickerSetShowOptions(Lorg/telegram/tgnet/TLRPC$StickerSet;)V
    .registers 2
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSet;

    .prologue
    .line 496
    return-void
.end method

.method public onStickersSettingsClick()V
    .registers 1

    .prologue
    .line 471
    return-void
.end method

.method public onStickersTab(Z)V
    .registers 2
    .param p1, "opened"    # Z

    .prologue
    .line 486
    return-void
.end method
