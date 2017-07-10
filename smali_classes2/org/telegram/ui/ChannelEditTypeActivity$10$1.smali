.class Lorg/telegram/ui/ChannelEditTypeActivity$10$1;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditTypeActivity$10;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity$10;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditTypeActivity$10;

    .prologue
    .line 639
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$10$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$10;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditTypeActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_10

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$10$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$10;

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity$10;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    # setter for: Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1102(Lorg/telegram/ui/ChannelEditTypeActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 645
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$10$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$10;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # setter for: Lorg/telegram/ui/ChannelEditTypeActivity;->loadingInvite:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1802(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$10$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$10;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1900(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/ui/Cells/TextBlockCell;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$10$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$10;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1100(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$10$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$10;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1100(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_33
    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    .line 647
    return-void

    .line 646
    :cond_37
    const-string v0, "Loading"

    const v2, 0x7f0702eb

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method
