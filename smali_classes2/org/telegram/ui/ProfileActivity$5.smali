.class Lorg/telegram/ui/ProfileActivity$5;
.super Landroid/widget/FrameLayout;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 568
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$5;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 576
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$5;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->checkListViewScroll()V
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$1200(Lorg/telegram/ui/ProfileActivity;)V

    .line 578
    return-void
.end method
