.class Lorg/telegram/ui/ProfileActivity$21;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 1458
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .prologue
    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->checkListViewScroll()V
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$1200(Lorg/telegram/ui/ProfileActivity;)V

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->needLayout()V
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)V

    .line 1464
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1466
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method
