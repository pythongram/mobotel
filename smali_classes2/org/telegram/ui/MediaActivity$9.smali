.class Lorg/telegram/ui/MediaActivity$9;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 999
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$9;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .prologue
    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$9;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$9;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->fixLayoutInternal()V
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$3600(Lorg/telegram/ui/MediaActivity;)V

    .line 1004
    const/4 v0, 0x1

    return v0
.end method
