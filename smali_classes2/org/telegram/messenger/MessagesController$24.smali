.class Lorg/telegram/messenger/MessagesController$24;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processLoadedDeleteTask(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$messages:Ljava/util/ArrayList;

.field final synthetic val$taskTime:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1808
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$24;->val$messages:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/MessagesController$24;->val$taskTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1811
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v1, v3}, Lorg/telegram/messenger/MessagesController;->access$3002(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 1812
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$24;->val$messages:Ljava/util/ArrayList;

    if-eqz v1, :cond_67

    .line 1813
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v2, p0, Lorg/telegram/messenger/MessagesController$24;->val$taskTime:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/MessagesController;->access$3102(Lorg/telegram/messenger/MessagesController;I)I

    .line 1814
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$24;->val$messages:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lorg/telegram/messenger/MessagesController;->access$2902(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1816
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$3200(Lorg/telegram/messenger/MessagesController;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 1817
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$3200(Lorg/telegram/messenger/MessagesController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1818
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v1, v4}, Lorg/telegram/messenger/MessagesController;->access$3202(Lorg/telegram/messenger/MessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1821
    :cond_31
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v1, v3}, Lorg/telegram/messenger/MessagesController;->access$3300(Lorg/telegram/messenger/MessagesController;Z)Z

    move-result v1

    if-nez v1, :cond_66

    .line 1822
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    new-instance v2, Lorg/telegram/messenger/MessagesController$24$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$24$1;-><init>(Lorg/telegram/messenger/MessagesController$24;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/MessagesController;->access$3202(Lorg/telegram/messenger/MessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1828
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 1829
    .local v0, "currentServerTime":I
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$3200(Lorg/telegram/messenger/MessagesController;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$3100(Lorg/telegram/messenger/MessagesController;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    .line 1835
    .end local v0    # "currentServerTime":I
    :cond_66
    :goto_66
    return-void

    .line 1832
    :cond_67
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v1, v3}, Lorg/telegram/messenger/MessagesController;->access$3102(Lorg/telegram/messenger/MessagesController;I)I

    .line 1833
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v1, v4}, Lorg/telegram/messenger/MessagesController;->access$2902(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_66
.end method
