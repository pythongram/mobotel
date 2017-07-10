.class Lorg/telegram/ui/Components/EmojiView$7;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 766
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 769
    instance-of v3, p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v3, :cond_23

    .line 770
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/StickerPreviewViewer;->reset()V

    move-object v1, p1

    .line 771
    check-cast v1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 772
    .local v1, "cell":Lorg/telegram/ui/Cells/StickerEmojiCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isDisabled()Z

    move-result v3

    if-nez v3, :cond_23

    .line 773
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->disable()V

    .line 774
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    .line 775
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v3

    if-nez v3, :cond_24

    .line 797
    .end local v1    # "cell":Lorg/telegram/ui/Cells/StickerEmojiCell;
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_23
    :goto_23
    return-void

    .line 778
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/StickerEmojiCell;
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_24
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favStickersEdit:Z
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$3400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 779
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_23

    .line 780
    :cond_36
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/EmojiView;->haveFavSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 781
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 782
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 783
    const-string v3, "FavStickerRemove"

    const v4, 0x7f0706f2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 784
    const-string v3, "OK"

    const v4, 0x7f0703d4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$7$1;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Components/EmojiView$7$1;-><init>(Lorg/telegram/ui/Components/EmojiView$7;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 789
    const-string v3, "Cancel"

    const v4, 0x7f0700fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 790
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_23

    .line 792
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_87
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/EmojiView;->toggleFavSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 793
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "FavStickerAdded"

    const v5, 0x7f0706f0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_23
.end method
