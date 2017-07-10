.class Lorg/telegram/ui/ChangeUsernameActivity$6$1;
.super Ljava/lang/Object;
.source "ChangeUsernameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity$6;Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ChangeUsernameActivity$6;

    .prologue
    .line 401
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 405
    :try_start_2
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChangeUsernameActivity$6;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_2d

    .line 409
    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 412
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 413
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 414
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChangeUsernameActivity$6;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChangeUsernameActivity;->finishFragment()V

    .line 415
    return-void

    .line 406
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :catch_2d
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9
.end method
