.class Lorg/telegram/messenger/query/StickersQuery$25$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$25;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$25;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$25;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$25;

    .prologue
    .line 1158
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$25;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1161
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    if-eqz v1, :cond_5c

    .line 1162
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->needReloadArchivedStickers:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$25;

    iget v5, v5, Lorg/telegram/messenger/query/StickersQuery$25;->val$type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1163
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$25;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$25;->val$hide:I

    if-eq v1, v6, :cond_5c

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$25;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$25;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$25;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$25;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 1164
    new-instance v0, Lorg/telegram/ui/Components/StickersArchiveAlert;

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$25;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$25;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$25;

    iget-boolean v1, v1, Lorg/telegram/messenger/query/StickersQuery$25;->val$showSettings:Z

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$25;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$25;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v2, v1

    :goto_48
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;->sets:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v2, v1}, Lorg/telegram/ui/Components/StickersArchiveAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V

    .line 1165
    .local v0, "alert":Lorg/telegram/ui/Components/StickersArchiveAlert;
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$25$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$25;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$25;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersArchiveAlert;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1168
    .end local v0    # "alert":Lorg/telegram/ui/Components/StickersArchiveAlert;
    :cond_5c
    return-void

    .line 1164
    :cond_5d
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_48
.end method
