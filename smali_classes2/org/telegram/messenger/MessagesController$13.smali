.class Lorg/telegram/messenger/MessagesController$13;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$classGuid:I

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;I)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1370
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$13;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput p3, p0, Lorg/telegram/messenger/MessagesController$13;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1373
    if-nez p2, :cond_b

    .line 1374
    new-instance v0, Lorg/telegram/messenger/MessagesController$13$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$13$1;-><init>(Lorg/telegram/messenger/MessagesController$13;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1407
    :goto_a
    return-void

    .line 1400
    :cond_b
    new-instance v0, Lorg/telegram/messenger/MessagesController$13$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$13$2;-><init>(Lorg/telegram/messenger/MessagesController$13;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_a
.end method
