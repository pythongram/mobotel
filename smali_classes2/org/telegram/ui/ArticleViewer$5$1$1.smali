.class Lorg/telegram/ui/ArticleViewer$5$1$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$5$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ArticleViewer$5$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$5$1;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/ui/ArticleViewer$5$1;

    .prologue
    .line 1345
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$5$1$1;->this$2:Lorg/telegram/ui/ArticleViewer$5$1;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$5$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1348
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5$1$1;->this$2:Lorg/telegram/ui/ArticleViewer$5$1;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->previewsReqId:I
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$3700(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    if-nez v1, :cond_e

    .line 1361
    :cond_d
    :goto_d
    return-void

    .line 1351
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5$1$1;->this$2:Lorg/telegram/ui/ArticleViewer$5$1;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->previewsReqId:I
    invoke-static {v1, v5}, Lorg/telegram/ui/ArticleViewer;->access$3702(Lorg/telegram/ui/ArticleViewer;I)I

    .line 1352
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5$1$1;->this$2:Lorg/telegram/ui/ArticleViewer$5$1;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V
    invoke-static {v1, v5}, Lorg/telegram/ui/ArticleViewer;->access$3200(Lorg/telegram/ui/ArticleViewer;Z)V

    .line 1353
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v1, :cond_d

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$5$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 1355
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1356
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1357
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1358
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5$1$1;->this$2:Lorg/telegram/ui/ArticleViewer$5$1;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$5$1$1;->this$2:Lorg/telegram/ui/ArticleViewer$5$1;

    iget-wide v4, v3, Lorg/telegram/ui/ArticleViewer$5$1;->val$pageId:J

    # invokes: Lorg/telegram/ui/ArticleViewer;->openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V
    invoke-static {v2, v1, v4, v5}, Lorg/telegram/ui/ArticleViewer;->access$3800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$User;J)V

    goto :goto_d
.end method
