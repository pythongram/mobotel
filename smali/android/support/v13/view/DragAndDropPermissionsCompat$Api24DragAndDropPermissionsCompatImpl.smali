.class Landroid/support/v13/view/DragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;
.super Landroid/support/v13/view/DragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;
.source "DragAndDropPermissionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/view/DragAndDropPermissionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24DragAndDropPermissionsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v13/view/DragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public release(Ljava/lang/Object;)V
    .registers 2
    .param p1, "dragAndDropPermissions"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {p1}, Landroid/support/v13/view/DragAndDropPermissionsCompatApi24;->release(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public request(Landroid/app/Activity;Landroid/view/DragEvent;)Ljava/lang/Object;
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 57
    invoke-static {p1, p2}, Landroid/support/v13/view/DragAndDropPermissionsCompatApi24;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
