.class Lorg/telegram/messenger/MessagesController$72$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$72;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$72;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$72;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$72;

    .prologue
    .line 4466
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$72$1;->this$1:Lorg/telegram/messenger/MessagesController$72;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$72$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 4469
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$72$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$72$1;->this$1:Lorg/telegram/messenger/MessagesController$72;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$72;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$72$1;->this$1:Lorg/telegram/messenger/MessagesController$72;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$72;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 4470
    return-void
.end method
