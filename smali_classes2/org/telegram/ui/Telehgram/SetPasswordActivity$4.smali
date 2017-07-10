.class Lorg/telegram/ui/Telehgram/SetPasswordActivity$4;
.super Ljava/lang/Object;
.source "SetPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SetPasswordActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 218
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$4;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 220
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 221
    return-void
.end method
