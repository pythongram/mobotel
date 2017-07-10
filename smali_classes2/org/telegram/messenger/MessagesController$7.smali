.class Lorg/telegram/messenger/MessagesController$7;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 854
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$7;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 857
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$7;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 858
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$7;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 859
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$7;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 860
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$7;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 861
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$7;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$702(Lorg/telegram/messenger/MessagesController;J)J

    .line 862
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$7;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$802(Lorg/telegram/messenger/MessagesController;J)J

    .line 863
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$7;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$902(Lorg/telegram/messenger/MessagesController;J)J

    .line 864
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$7;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 865
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$7;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 866
    return-void
.end method
