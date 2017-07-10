.class Lorg/telegram/ui/Telehgram/DeleteContactActivity$3;
.super Ljava/lang/Object;
.source "DeleteContactActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/DeleteContactActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 370
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$3;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/MotionEvent;

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method
