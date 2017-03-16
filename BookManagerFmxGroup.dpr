<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
    <PropertyGroup>
        <ProjectGuid>{B06D30E1-40E0-46BC-9896-1B6F50E64396}</ProjectGuid>
    </PropertyGroup>
    <ItemGroup>
        <Projects Include="BookManagerFmx.dproj">
            <Dependencies/>
        </Projects>
    </ItemGroup>
    <ProjectExtensions>
        <Borland.Personality>Default.Personality.12</Borland.Personality>
        <Borland.ProjectType/>
        <BorlandProject>
            <Default.Personality/>
        </BorlandProject>
    </ProjectExtensions>
    <Target Name="BookManagerFmx">
        <MSBuild Projects="BookManagerFmx.dproj"/>
    </Target>
    <Target Name="BookManagerFmx:Clean">
        <MSBuild Projects="BookManagerFmx.dproj" Targets="Clean"/>
    </Target>
    <Target Name="BookManagerFmx:Make">
        <MSBuild Projects="BookManagerFmx.dproj" Targets="Make"/>
    </Target>
    <Target Name="Build">
        <CallTarget Targets="BookManagerFmx"/>
    </Target>
    <Target Name="Clean">
        <CallTarget Targets="BookManagerFmx:Clean"/>
    </Target>
    <Target Name="Make">
        <CallTarget Targets="BookManagerFmx:Make"/>
    </Target>
    <Import Project="$(BDS)\Bin\CodeGear.Group.Targets" Condition="Exists('$(BDS)\Bin\CodeGear.Group.Targets')"/>
</Project>
