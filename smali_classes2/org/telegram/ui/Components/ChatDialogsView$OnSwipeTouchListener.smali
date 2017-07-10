.class public Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;
.super Ljava/lang/Object;
.source "ChatDialogsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatDialogsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSwipeTouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;
    }
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 485
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;-><init>(Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;Lorg/telegram/ui/Components/ChatDialogsView$1;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 487
    return-void
.end method


# virtual methods
.method public onSwipeBottom()V
    .registers 1

    .prologue
    .line 503
    return-void
.end method

.method public onSwipeLeft()V
    .registers 1

    .prologue
    .line 497
    return-void
.end method

.method public onSwipeRight()V
    .registers 1

    .prologue
    .line 494
    return-void
.end method

.method public onSwipeTop()V
    .registers 1

    .prologue
    .line 500
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 490
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
