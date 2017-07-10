.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$3;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 417
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->processRowSelect(Landroid/view/View;)V
    invoke-static {v0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/view/View;)V

    .line 425
    :goto_11
    return-void

    .line 424
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createMenu(Landroid/view/View;Z)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/view/View;Z)V

    goto :goto_11
.end method
