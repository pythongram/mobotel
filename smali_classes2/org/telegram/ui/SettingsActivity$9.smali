.class Lorg/telegram/ui/SettingsActivity$9;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 778
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 9
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v2, 0x0

    .line 781
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/SettingsActivity;->access$3700(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getItemCount()I

    move-result v3

    if-nez v3, :cond_e

    .line 795
    :cond_d
    :goto_d
    return-void

    .line 784
    :cond_e
    const/4 v1, 0x0

    .line 785
    .local v1, "height":I
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 786
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_d

    .line 787
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/SettingsActivity;->access$3700(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    if-nez v3, :cond_33

    .line 788
    const/high16 v3, 0x42b00000    # 88.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_31

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_31
    add-int v1, v3, v2

    .line 790
    :cond_33
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->extraHeight:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    if-eq v2, v1, :cond_d

    .line 791
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    # setter for: Lorg/telegram/ui/SettingsActivity;->extraHeight:I
    invoke-static {v2, v1}, Lorg/telegram/ui/SettingsActivity;->access$3802(Lorg/telegram/ui/SettingsActivity;I)I

    .line 792
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    # invokes: Lorg/telegram/ui/SettingsActivity;->needLayout()V
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3900(Lorg/telegram/ui/SettingsActivity;)V

    goto :goto_d
.end method
