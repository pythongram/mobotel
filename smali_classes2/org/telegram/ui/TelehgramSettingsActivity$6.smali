.class Lorg/telegram/ui/TelehgramSettingsActivity$6;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "TelehgramSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TelehgramSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 1207
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$6;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

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

    .line 1210
    iget-object v3, p0, Lorg/telegram/ui/TelehgramSettingsActivity$6;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4900(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getItemCount()I

    move-result v3

    if-nez v3, :cond_e

    .line 1224
    :cond_d
    :goto_d
    return-void

    .line 1213
    :cond_e
    const/4 v1, 0x0

    .line 1214
    .local v1, "height":I
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1215
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_d

    .line 1216
    iget-object v3, p0, Lorg/telegram/ui/TelehgramSettingsActivity$6;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4900(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    if-nez v3, :cond_33

    .line 1217
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

    .line 1219
    :cond_33
    iget-object v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$6;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeight:I
    invoke-static {v2}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v2

    if-eq v2, v1, :cond_d

    .line 1220
    iget-object v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$6;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # setter for: Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeight:I
    invoke-static {v2, v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5002(Lorg/telegram/ui/TelehgramSettingsActivity;I)I

    .line 1221
    iget-object v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$6;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->needLayout()V
    invoke-static {v2}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5100(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    goto :goto_d
.end method
