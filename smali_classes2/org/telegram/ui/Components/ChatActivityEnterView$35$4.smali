.class Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$35;->onStickerSetShowOptions(Lorg/telegram/tgnet/TLRPC$StickerSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

.field final synthetic val$options:[I

.field final synthetic val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$35;[ILorg/telegram/tgnet/TLRPC$StickerSet;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    .prologue
    .line 2827
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->val$options:[I

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2829
    const/4 v2, 0x2

    .line 2830
    .local v2, "i":I
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->val$options:[I

    aget v3, v3, p2

    if-nez v3, :cond_26

    .line 2831
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2833
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v3, :cond_18

    .line 2834
    const/4 v2, 0x1

    .line 2836
    :cond_18
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    invoke-static {v0, v3, v2, v4, v6}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2847
    .end local v0    # "context":Landroid/content/Context;
    :cond_25
    :goto_25
    return-void

    .line 2837
    :cond_26
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->val$options:[I

    aget v3, v3, p2

    if-ne v3, v6, :cond_42

    .line 2838
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    invoke-static {v3, v4, v7, v5, v6}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    goto :goto_25

    .line 2839
    :cond_42
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->val$options:[I

    aget v3, v3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    .line 2841
    :try_start_49
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    const-string v4, "label"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "https://telegram.me/addstickers/%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2842
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "LinkCopied"

    const v5, 0x7f0702e0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_87} :catch_88

    goto :goto_25

    .line 2843
    :catch_88
    move-exception v1

    .line 2844
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_25
.end method
