.class Lorg/telegram/ui/ChannelCreateActivity$11$1;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity$11;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity$11;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelCreateActivity$11;

    .prologue
    .line 578
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iput-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_10

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iget-object v1, v0, Lorg/telegram/ui/ChannelCreateActivity$11;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2002(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 584
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$11;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->loadingInvite:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$2102(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$11;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Cells/TextBlockCell;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$11;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2000(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$11;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2000(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_33
    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    .line 586
    return-void

    .line 585
    :cond_37
    const-string v0, "Loading"

    const v2, 0x7f0702eb

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method
