.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$10;
.super Lorg/telegram/ui/Components/RecyclerListView;
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
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 935
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$10;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 938
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 939
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$10;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forceScrollToTop:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3702(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Z)Z

    .line 940
    return-void
.end method
