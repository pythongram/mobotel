.class Lorg/telegram/messenger/MessagesController$30;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processLoadedBlockedUsers(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$cache:Z

.field final synthetic val$ids:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1970
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$30;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$30;->val$users:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesController$30;->val$cache:Z

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$30;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1973
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$30;->val$users:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 1974
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$30;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$30;->val$users:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesController$30;->val$cache:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1976
    :cond_e
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$30;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v3, v0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 1977
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$30;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$30;->val$cache:Z

    if-eqz v0, :cond_28

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    if-nez v0, :cond_28

    .line 1978
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$30;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getBlockedUsers(Z)V

    .line 1986
    :goto_27
    return-void

    .line 1980
    :cond_28
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$30;->val$cache:Z

    if-nez v0, :cond_32

    .line 1981
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    .line 1982
    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1984
    :cond_32
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$30;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$30;->val$ids:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    .line 1985
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_27
.end method
