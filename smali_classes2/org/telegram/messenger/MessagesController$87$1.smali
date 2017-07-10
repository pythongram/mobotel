.class Lorg/telegram/messenger/MessagesController$87$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$87;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$87;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$87;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$87;

    .prologue
    .line 5016
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$87$1;->this$1:Lorg/telegram/messenger/MessagesController$87;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 5019
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$87$1;->this$1:Lorg/telegram/messenger/MessagesController$87;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$87;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    .line 5020
    return-void
.end method
