.class Lorg/telegram/ui/ChannelEditTypeActivity$11;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditTypeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 655
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$11;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 658
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$11;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$2000(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 659
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$11;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$2000(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 660
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_13
    if-ge v0, v2, :cond_2b

    .line 661
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$11;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$2000(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 662
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    if-eqz v3, :cond_28

    .line 663
    check-cast v1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->update()V

    .line 660
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 667
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_2b
    return-void
.end method
