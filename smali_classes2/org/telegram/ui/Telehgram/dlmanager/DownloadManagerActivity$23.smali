.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$23;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fixLayout()V
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
    .line 2134
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$23;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .prologue
    .line 2137
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$23;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2138
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$23;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2140
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$23;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fixLayoutInternal()Z
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Z

    move-result v0

    return v0
.end method
