.class Lorg/telegram/ui/Telehgram/OnlineContactsActivity$2;
.super Ljava/lang/Object;
.source "OnlineContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method
