.class Lorg/telegram/messenger/MessagesController$57$1$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$57$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$57$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$57$1;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/messenger/MessagesController$57$1;

    .prologue
    .line 3370
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$57$1$1;->this$2:Lorg/telegram/messenger/MessagesController$57$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3373
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$1$1;->this$2:Lorg/telegram/messenger/MessagesController$57$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57$1;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$4502(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 3374
    return-void
.end method
