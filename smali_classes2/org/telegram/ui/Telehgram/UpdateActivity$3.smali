.class Lorg/telegram/ui/Telehgram/UpdateActivity$3;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/UpdateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/UpdateActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$3;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method
