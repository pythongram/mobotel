.class Lorg/telegram/ui/ChannelCreateActivity$12;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity;->didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelCreateActivity;

.field final synthetic val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field final synthetic val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 638
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 641
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;
    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelCreateActivity;->access$1402(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 642
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelCreateActivity;->access$1302(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 643
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$1600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v2}, Lorg/telegram/ui/ChannelCreateActivity;->access$1300(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v2

    const-string v3, "50_50"

    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;
    invoke-static {v4}, Lorg/telegram/ui/ChannelCreateActivity;->access$1500(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 644
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->createAfterUpload:Z
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$500(Lorg/telegram/ui/ChannelCreateActivity;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 646
    :try_start_2f
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 647
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 648
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelCreateActivity;->access$602(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_52} :catch_5c

    .line 653
    :cond_52
    :goto_52
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$12;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->doneButton:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$1700(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 655
    :cond_5b
    return-void

    .line 650
    :catch_5c
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_52
.end method
