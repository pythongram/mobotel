.class public Lorg/telegram/ui/Telehgram/UpdateCursorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UpdateCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

.field tvNewValue:Landroid/widget/TextView;

.field tvOldValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

    .prologue
    .line 15
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateCursorAdapter$ViewHolder;->this$0:Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method