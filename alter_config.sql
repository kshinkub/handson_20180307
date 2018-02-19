alter system alter configuration ( 'indexserver.ini','SYSTEM' ) set ( 'import_export','enable_csv_import_path_filter' ) = 'false' with reconfigure;
