.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;
.super Landroid/widget/FrameLayout;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1074
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 1094
    const/4 v0, 0x0

    return v0
.end method

.method public setTranslationY(F)V
    .registers 5
    .param p1, "translationY"    # F

    .prologue
    .line 1077
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1078
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_44

    .line 1079
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1080
    .local v0, "height":I
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 1081
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1083
    :cond_22
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1084
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1086
    :cond_33
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 1087
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1090
    .end local v0    # "height":I
    :cond_44
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 1099
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1100
    const/16 v1, 0x8

    if-ne p1, v1, :cond_4e

    .line 1101
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 1102
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1104
    :cond_19
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 1105
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1107
    :cond_2a
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 1108
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4b

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :cond_4b
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1111
    :cond_4e
    return-void
.end method
