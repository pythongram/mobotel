.class Lorg/telegram/messenger/MessagesController$24$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$24;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$24;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$24;

    .prologue
    .line 1822
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$24$1;->this$1:Lorg/telegram/messenger/MessagesController$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1825
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$24$1;->this$1:Lorg/telegram/messenger/MessagesController$24;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$3300(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 1826
    return-void
.end method
