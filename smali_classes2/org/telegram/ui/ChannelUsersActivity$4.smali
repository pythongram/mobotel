.class Lorg/telegram/ui/ChannelUsersActivity$4;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->setUserChannelRole(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 325
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$4;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$4;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 7
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 328
    if-nez p2, :cond_17

    .line 329
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 330
    new-instance v0, Lorg/telegram/ui/ChannelUsersActivity$4$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelUsersActivity$4$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$4;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 344
    :goto_16
    return-void

    .line 337
    .restart local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :cond_17
    new-instance v0, Lorg/telegram/ui/ChannelUsersActivity$4$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ChannelUsersActivity$4$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity$4;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_16
.end method
