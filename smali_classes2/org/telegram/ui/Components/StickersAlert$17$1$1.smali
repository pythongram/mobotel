.class Lorg/telegram/ui/Components/StickersAlert$17$1$1;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert$17$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert$17$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$2"    # Lorg/telegram/ui/Components/StickersAlert$17$1;

    .prologue
    .line 550
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 554
    :try_start_2
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_ca

    .line 555
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v2, :cond_a8

    .line 556
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "AddMasksInstalled"

    const v6, 0x7f07006b

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 560
    :goto_31
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    if-eqz v2, :cond_93

    .line 561
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/NotificationCenter;->needReloadArchivedStickers:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 562
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_93

    .line 563
    new-instance v0, Lorg/telegram/ui/Components/StickersArchiveAlert;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;->sets:Ljava/util/ArrayList;

    invoke-direct {v0, v5, v6, v2}, Lorg/telegram/ui/Components/StickersArchiveAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V

    .line 564
    .local v0, "alert":Lorg/telegram/ui/Components/StickersArchiveAlert;
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersArchiveAlert;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_93} :catch_c5

    .line 573
    .end local v0    # "alert":Lorg/telegram/ui/Components/StickersArchiveAlert;
    :cond_93
    :goto_93
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v2, :cond_e6

    move v2, v3

    :goto_a4
    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    .line 574
    return-void

    .line 558
    :cond_a8
    :try_start_a8
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "AddStickersInstalled"

    const v6, 0x7f070071

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c3} :catch_c5

    goto/16 :goto_31

    .line 570
    :catch_c5
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_93

    .line 568
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_ca
    :try_start_ca
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "ErrorOccurred"

    const v6, 0x7f070210

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e5} :catch_c5

    goto :goto_93

    :cond_e6
    move v2, v4

    .line 573
    goto :goto_a4
.end method
