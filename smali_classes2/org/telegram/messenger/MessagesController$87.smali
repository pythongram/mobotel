.class Lorg/telegram/messenger/MessagesController$87;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->registerForPush(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$regid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 5007
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$87;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$87;->val$regid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 5010
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_14

    .line 5011
    const-string v0, "registered for push"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5012
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 5013
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$87;->val$regid:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 5014
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 5016
    :cond_14
    new-instance v0, Lorg/telegram/messenger/MessagesController$87$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$87$1;-><init>(Lorg/telegram/messenger/MessagesController$87;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5022
    return-void
.end method
