.class Lorg/telegram/ui/Adapters/MentionsAdapter$7$1$1;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$2"    # Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;

    .prologue
    .line 352
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 355
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$7;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1100(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$7;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1100(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$7;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->val$username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 369
    :cond_24
    :goto_24
    return-void

    .line 358
    :cond_25
    const/4 v1, 0x0

    .line 359
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_4f

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 361
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 362
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 363
    .restart local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 364
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 368
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_4f
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$7;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # invokes: Lorg/telegram/ui/Adapters/MentionsAdapter;->processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V
    invoke-static {v2, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1200(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_24
.end method
