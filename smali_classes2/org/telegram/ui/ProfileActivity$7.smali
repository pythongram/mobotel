.class Lorg/telegram/ui/ProfileActivity$7;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
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
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 595
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .registers 2

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method
