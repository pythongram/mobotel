.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$Holder;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;Landroid/view/View;)V
    .registers 3
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 2815
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$Holder;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    .line 2816
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2817
    return-void
.end method
