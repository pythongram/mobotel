.class Lorg/telegram/ui/ChannelEditActivity$3$1;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity$3;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditActivity$3;

    .prologue
    .line 274
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 277
    if-nez p2, :cond_f

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$400(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openCamera()V

    .line 286
    :cond_e
    :goto_e
    return-void

    .line 279
    :cond_f
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1e

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$400(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openGallery()V

    goto :goto_e

    .line 281
    :cond_1e
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # setter for: Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1102(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # setter for: Lorg/telegram/ui/ChannelEditActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1002(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$1300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1100(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v1

    const-string v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;
    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1200(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_e
.end method
