.class Lorg/telegram/ui/StickerPreviewViewer$3;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickerPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;ILorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickerPreviewViewer;

.field final synthetic val$height:I

.field final synthetic val$listView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/view/View;I)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 309
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iput-object p2, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    iput p3, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$600(Lorg/telegram/ui/StickerPreviewViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_c

    .line 335
    :cond_b
    :goto_b
    return-void

    .line 315
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_6c

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 322
    :cond_20
    :goto_20
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # setter for: Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$602(Lorg/telegram/ui/StickerPreviewViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 323
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/StickerPreviewViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget v1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$height:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer;->setKeyboardHeight(I)V

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v0, :cond_81

    .line 326
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_b

    .line 318
    :cond_6c
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_20

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_20

    .line 328
    :cond_81
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v0, :cond_a9

    .line 329
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto/16 :goto_b

    .line 331
    :cond_a9
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_b

    .line 332
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto/16 :goto_b
.end method
