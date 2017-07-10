.class Lorg/telegram/ui/ProfileActivity$12$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$12;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$12;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$12;

    .prologue
    .line 1060
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$12$1;->this$1:Lorg/telegram/ui/ProfileActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1063
    if-nez p2, :cond_e

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$12$1;->this$1:Lorg/telegram/ui/ProfileActivity$12;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openCamera()V

    .line 1070
    :cond_d
    :goto_d
    return-void

    .line 1065
    :cond_e
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1d

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$12$1;->this$1:Lorg/telegram/ui/ProfileActivity$12;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openGallery()V

    goto :goto_d

    .line 1067
    :cond_1d
    const/4 v0, 0x2

    if-ne p2, v0, :cond_d

    .line 1068
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$12$1;->this$1:Lorg/telegram/ui/ProfileActivity$12;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    goto :goto_d
.end method
