.class Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1$1;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1;

.field final synthetic val$channel:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .registers 3
    .param p1, "this$3"    # Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1;

    .prologue
    .line 431
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1$1;->this$3:Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1$1;->val$channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 434
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    .line 435
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1$1;->val$channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 436
    const-string v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    .line 437
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1$1$1;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1$1;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 454
    return-void
.end method
