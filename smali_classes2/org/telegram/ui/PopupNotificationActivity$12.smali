.class Lorg/telegram/ui/PopupNotificationActivity$12;
.super Ljava/lang/Object;
.source "PopupNotificationActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 952
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 955
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1400(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 956
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PopupNotificationActivity;->checkTransitionAnimation()Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z
    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1500(Lorg/telegram/ui/PopupNotificationActivity;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 957
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1400(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 958
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 959
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 960
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 961
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 962
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1400(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 963
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V
    invoke-static {v1, v2}, Lorg/telegram/ui/PopupNotificationActivity;->access$1200(Lorg/telegram/ui/PopupNotificationActivity;I)V

    .line 965
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4b
    const/4 v1, 0x1

    return v1
.end method
