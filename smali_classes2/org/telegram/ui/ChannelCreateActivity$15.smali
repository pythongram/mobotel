.class Lorg/telegram/ui/ChannelCreateActivity$15;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 935
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .registers 10
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 938
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$2600(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 939
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$2600(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 940
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_14
    if-ge v0, v2, :cond_2c

    .line 941
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$2600(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 942
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    if-eqz v3, :cond_29

    .line 943
    check-cast v1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->update()V

    .line 940
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 947
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_2c
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$1600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    if-eqz v3, :cond_62

    .line 948
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$1500(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v5

    const/4 v6, 0x5

    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_63

    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_55
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v4, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 949
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$1600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 951
    :cond_62
    return-void

    :cond_63
    move-object v3, v4

    .line 948
    goto :goto_55
.end method
